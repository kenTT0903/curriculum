    var app = new Vue({
    el: '#app',
    data: {
        list: [],
        serchedlist: [],
        addText: '',
        serchword:'',
        counter: 0,
    },
    //watchでlistの変更を監視
    watch: {
        list: {
            handler: function() {
                //localStorageにデータを保存
                localStorage.setItem("list", JSON.stringify(this.list));
            },
            deep: true
        }
    },
    //マウントされた時にlocalStorageからデータを取得
    mounted: function() {
        this.list = JSON.parse(localStorage.getItem("list")) || [];
    },
    methods: {
        addToDo: function() {
            if (this.addText !== '') {
                this.list.push({
                    text: this.addText, 
                    isChecked: false,
                });
            }
            this.addText = '';
        },

        deleteBtn1: function() {
            this.list = this.list.filter(function(todo) {
                return !todo.isChecked;
            });
            this.Checked();
        },

        deleteBtn2: function() {
            this.list = this.list.filter(function(serched) {
                return !serched.isChecked;
            });
            this.Checked();
        },

        Checked: function(){
            this.counter = 0
            for (let i = 0; i < this.list.length; i++) {
            if (this.list[i].isChecked) {
            this.counter++;
            }
        }
      },

        Serch: function(){
           return this.list.text.indexOf(this.serchword);
    }
    },
    
    computed:{
        makeserchedlist: function(){
            for (let i = 0; i < this.list.length; i++) {
                if (this.list[i].text.indexOf(this.serchword)) {
                    this.serchedlist[i] = this.list[i];
                }
            }
                return this.serchedlist;
        }
    }
    }); 

    /*ifで条件分岐して、forで表示。 */
