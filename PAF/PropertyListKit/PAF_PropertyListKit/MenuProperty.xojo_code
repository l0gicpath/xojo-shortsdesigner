#tag Class
Protected Class MenuProperty
Inherits ListItem
	#tag Method, Flags = &h1000
		Sub Constructor(sCaption as String, vValue as Variant, miList as MenuItem)
		  Caption = sCaption
		  Value = vValue
		  oMenu = miList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(sCaption as String, vValue as Variant, listItems as String)
		  Caption = sCaption
		  Value = vValue
		  MenuItems = listItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g as Graphics, iTop as Integer)
		  g.Bold = false
		  
		  dim sProperty as String = me.Caption + ":"
		  dim sValue as String = me.Value.StringValue
		  
		  g.DrawString(sProperty, g.Width/2 - g.StringWidth(sProperty) - 4, iTop + g.TextHeight - (g.TextHeight-g.TextAscent))
		  
		  g.DrawString(sValue, g.Width/2 + 4, iTop + g.TextHeight - (g.TextHeight-g.TextAscent))
		  
		  if me.oMenu.Count > 0 then
		    
		    // Draw DisclosureTriangle
		    dim points(6) as Integer
		    points(1)=g.Width - 4 - 10
		    points(2)=itop
		    points(3)=g.Width - 4
		    points(4)=itop
		    points(5)=g.Width - 4 - 5
		    points(6)=itop + 5
		    
		    g.FillPolygon points
		    
		    
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		MenuItems As String
	#tag EndProperty

	#tag Property, Flags = &h0
		oMenu As MenuItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuItems"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
