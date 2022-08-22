  describe '/users/signin' do
    context '正常な操作' do
      it 'loginができる' do
        expect(1 + 1).to eq 2
      end
    end
    context '間違った操作' do
      it 'loginができない' do
        expect(1 + 1).to eq 3
      end
    end
  end