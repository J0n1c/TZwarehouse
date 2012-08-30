# encoding=utf-8

class Flow < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :user
  has_many :streams
  attr_accessible :text, :warehouse_id, :user_id
  accepts_nested_attributes_for :streams
  before_save :parse_streams


  protected

  def parse_streams
    #23.08.12 22:30 Персонаж 'Магазин Сина' перевёл со счёта 599999 ресурсы: Metals[6800]
    #24.08.12 19:36 Персонаж 'Аптечная Сеть' перевёл на счет 620431 ресурсы: Metals[1]
    #24.08.12 19:37 Персонаж 'Аптечная Сеть' забрал из ячейки предметы: Metals[1]
    #24.08.12 19:37 Персонаж 'Аптечная Сеть' положил в ячейку предметы: Metals[1]
    #24.08.12 19:38 Персонаж 'T1rael' забрал из ячейки предметы: Organic[36]
    #24.08.12 19:38 Персонаж 'T1rael' положил в ячейку предметы: Organic[36]
    #24.08.12 19:39 Персонаж 'Isaac Newton' забрал со склада Metals[1]
    #24.08.12 19:39 Персонаж 'Isaac Newton' выложил на склад Metals[1]
    #24.08.12 19:40 Персонаж 'Isaac Newton' забрал со склада Item design(ammo 12 mm[300])[100]
    #24.08.12 19:40 Персонаж 'Isaac Newton' выложил на склад Item design(ammo 12 mm[300])[100]
    #24.08.12 19:43 Ресурсы ,Metals[24],Precious metals[6],Polymers[12],Organic[6],Silicon[24],Gems[6],Venom[12] были использованы для производства
    #24.08.12 19:44 Персонаж 'Isaac Newton' добавил в очередь исследование чертежа Item design(Big MedKit[40])[100]
    #24.08.12 19:44 Персонаж 'Isaac Newton' запустил исследования 24.08.12 19:44 Ресурсы Organic[1600],Venom[1600] были использованы для исследований
    #24.08.12 19:44 Начато исследование чертежа Big MedKit

    # ^([0-3][0-9].[01]\d.\d\d [0-2]\d:[0-6]\d) Персонаж '(.*)' перевёл со счёта (\d*) ресурсы: (\w*)\[(\d*)\]$
    #reg = "^([0-3][0-9].[01]\d.\d\d [0-2]\d:[0-6]\d) Персонаж '(.*)' перевёл со счёта (\d*) ресурсы: (\w*)\[(\d*)\]$"
    reg = '([0-3][0-9].[01]\d.\d\d [0-2]\d:[0-6]\d) Персонаж \'(.*)\' перевёл со счёта (\d*) ресурсы: (\w*)\[(\d*)\]'
    #to_account_regex = /^([0-3][0-9].[01]\d.\d\d [0-2]\d:[0-6]\d) Персонаж '(.*)' перевёл со счёта (\d*) ресурсы: (\w*)\[(\d*)\]$/
    #lol = /ggg/
    #puts to_account_regex
    res = self.attributes['text'].scan /#{reg}/
    puts  res.inspect






  end

end
