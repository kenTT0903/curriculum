class Taiyaki{

    //コンストラクタ
    constructor(inside){
        this.inside = inside;
    }

insidecheck(){
    console.log(`中身は${this.inside}です`);
}

}

let beanjam = new Taiyaki('あんこ');
beanjam.insidecheck();

let creem = new Taiyaki('クリーム');
creem.insidecheck();

let cheese = new Taiyaki('チーズ');
cheese.insidecheck();