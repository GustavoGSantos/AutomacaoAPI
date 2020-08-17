describe 'cadastrar' do
    def login(field_email, field_password)
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json

        @login = Login.post('/sessions', body: @body)
    end
    context 'tarefa' do
        before {login('brunobatista66@gmail.com', '123456')}
        it 'com sucesso' do
            @header = {
                Accept: 'application/vnd.tasksmanager.v2',
                'Content-Type': 'application/json',
                Authorization: @login.parsed_response['data']['attributes']['auth-token']
            }
            @body = {
                task: {
                    title: 'Tarefa 122',
                    description: 'Descrição da tarefa 122',
                    deadline: '2020-08-31 16:00:00',
                    done: true
                }
            }.to_json

            @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
            expect(@tarefas.parsed_response['data']['attributes']['title']).to eq 'Tarefa 122'
        end
    end
end