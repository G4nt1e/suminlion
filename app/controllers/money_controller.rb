class MoneyController < ApplicationController
    #값을 받아올 view
    def money 
    end
    
    #view에서 data를 받아서 그 data를 db에 저장한다.
    def data
        
        @haha = params[:title]
        @haha2 = params[:price]

        @hoho=Buja.new  # db테이블 컬럼을 하나 생성해줍니다.
        @hoho.title = @haha  # param 값 넣어주기
        @hoho.price = @haha2


        @hoho.save  #db값을 저장
        
        redirect_to '/list'
    end
    #db에 있는 모든 값을 출력해 주는 기능
    def list
        @allData = Buja.all
    end
end
