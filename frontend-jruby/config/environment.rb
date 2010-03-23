include Java

java_import java.awt.BorderLayout
java_import java.awt.Color

java_import javax.swing.JButton
java_import javax.swing.JFrame
java_import javax.swing.JLabel
java_import javax.swing.JPanel
java_import javax.swing.JTable
java_import javax.swing.table.AbstractTableModel

# convenience method to group similar operations together
class Object
  def with
    yield(self) if block_given?
    self
  end
end

@@user = 2