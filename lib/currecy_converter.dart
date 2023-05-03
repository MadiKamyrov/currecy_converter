import 'package:flutter/material.dart';

class CurrecyConverter extends StatefulWidget {
  const CurrecyConverter ({ Key? key }) : super(key: key);

  @override
  State<CurrecyConverter> createState() => _CurrecyConverterState();
}

class _CurrecyConverterState extends State<CurrecyConverter> {
   String? valueschoose;
   String? valueschoose1;

  @override
  Widget build(BuildContext context) {
    final _amount = TextEditingController();
    final _tot = TextEditingController();
    int cal;
    int result;

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Text("Currency Converter", style: TextStyle(fontSize: 30, color: Colors.black)), 
              SizedBox(height: 15,),
                TextField(
                  controller: _amount,
                  decoration: InputDecoration(
                    labelText: "Amount",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) 
                  ),
                ),
                SizedBox(height: 15,),
        
                DropdownButton<String>(
                       value: this.valueschoose,
                           items: <String>['Рубли', 'Тенге', 'Лиры', 'Гривны', 'Фунты'].map((String value) {
                              return DropdownMenuItem<String>(
                                 value: value,
                                 child: Text(value),
                               );
                             }).toList(),
                             onChanged: (value) => setState(() => valueschoose = value,
                           )),
                
                SizedBox(height: 15,),
        
                DropdownButton<String>(
                  value: this.valueschoose1,
                  items: <String>['Доллары'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => valueschoose1 = value,
                  )),
        
                SizedBox(height: 15,),
        
                TextField(
                  controller: _tot,
                  decoration: InputDecoration(
                    labelText: "total",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 15,),
                  GestureDetector(
                    onTap: ()
                    {
                      if(valueschoose=="Лиры" && valueschoose1=="Доллары")
                      {
                        cal = int.parse(_amount.text) * 300;
                        result = cal;
                        _tot.text = result.toString();
                      }
                      else if(valueschoose=="Тенге" && valueschoose1 == "Доллары")
                      {
                        cal = int.parse(_amount.text) * 78;
                        result = cal;
                        _tot.text = result.toString();
                      }

                       else if(valueschoose=="Рубли" && valueschoose1 == "Доллары")
                      {
                        cal = int.parse(_amount.text) * 50;
                        result = cal;
                        _tot.text = result.toString();
                      }

                       else if(valueschoose=="Гривны" && valueschoose1 == "Доллары")
                      {
                        cal = int.parse(_amount.text) * 35;
                        result = cal;
                        _tot.text = result.toString();
                      }

                       else if(valueschoose=="Фунты" && valueschoose1 == "Доллары")
                      {
                        cal = int.parse(_amount.text) * 40;
                        result = cal;
                        _tot.text = result.toString();
                      }
                    },

                    


                    child: Container(
                      alignment: Alignment.center,
                      height: size.height /14,
                      width: size.width,
                      decoration: BoxDecoration(color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                    
                    child: Text(
                        "Convert",
                        style: TextStyle(color: Colors.white, 
                        fontWeight: FontWeight.bold),),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}