module ActivitiesViews
  
  class Index < JPanel
    
    attr_reader :table
    def initialize(activity_service)
      super()
      self.layout = BorderLayout.new
      @table = JTable.new(ActivitiesTableModel.new(activity_service))       
      self.add(@table.table_header, BorderLayout::PAGE_START)
      self.add(@table, BorderLayout::CENTER)
      self.add(create_buttons, BorderLayout::SOUTH)
    end
    
    private 
    
      def create_buttons
        btn_panel = JPanel.new.with do |p|
          p.add(JButton.new("Novo Projeto"))
          p.add(JButton.new("Nova Atividade"))
        end
      end
    
  end
  
  class ActivitiesTableModel < AbstractTableModel
    
    attr_reader :columns, :data
    def initialize(activity_service)
      super()
      @columns = ["#", "Projeto", "Atividade", "Est.", "Real."]
      @data = activity_service.index(@@user)
    end
    
    def getColumnCount
      @columns.size
    end
    
    def getRowCount
      @data.size
    end
    
    def getColumnName(col)
      @columns[col]
    end
    
    def getValueAt(row, col)
      @data[row][col]
    end
    
    def getColumnClass(col)
      @data.to_java[0, col].java_class
    end
    
  end
  
end