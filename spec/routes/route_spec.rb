require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  it do
    expect(get: new_user_session_path).to route_to(controller: 'devise/sessions', action: 'new')
  end

  it do
    expect(get: users_path).to route_to(controller: 'users', action: 'index')
  end

  it do
    expect(post: user_session_path).to route_to(controller: 'devise/sessions', action: 'create')
  end

  it do
    expect(delete: destroy_user_session_path)
      .to route_to(controller: 'devise/sessions', action: 'destroy')
  end

  it do
    expect(get: new_user_password_path)
      .to route_to(controller: 'devise/passwords', action: 'new')
  end

  it do
    expect(get: edit_user_password_path)
      .to route_to(controller: 'devise/passwords', action: 'edit')
  end

  it do
    expect(patch: user_password_path)
      .to route_to(controller: 'devise/passwords', action: 'update')
  end

  it do
    expect(put: user_password_path)
      .to route_to(controller: 'devise/passwords', action: 'update')
  end

  it do
    expect(post: user_password_path)
      .to route_to(controller: 'devise/passwords', action: 'create')
  end

  it do
    expect(get: cancel_user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'cancel')
  end

  it do
    expect(get: new_user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'new')
  end

  it do
    expect(get: edit_user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'edit')
  end

  it do
    expect(patch: user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'update')
  end

  it do
    expect(put: user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'update')
  end

  it do
    expect(delete: user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'destroy')
  end

  it do
    expect(post: user_registration_path)
      .to route_to(controller: 'devise/registrations', action: 'create')
  end

  it do
    expect(get: users_path)
      .to route_to(controller: 'users', action: 'index')
  end

  it do
    expect(get: user_path(1))
      .to route_to(controller: 'users', action: 'show', id: '1')
  end

  it do
    expect(patch: user_path(2))
      .to route_to(controller: 'users', action: 'update', id: '2')
  end

  it do
    expect(put: user_path(3))
      .to route_to(controller: 'users', action: 'update', id: '3')
  end

  it do
    expect(post: opinions_path)
      .to route_to(controller: 'opinions', action: 'create')
  end

  it do
    expect(delete: opinion_path(4))
      .to route_to(controller: 'opinions', action: 'destroy', id: '4')
  end
end
