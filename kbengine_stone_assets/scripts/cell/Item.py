# -*- coding: utf-8 -*-
import KBEngine
from KBEDebug import *
from interfaces.EntityCommon import EntityCommon

class Item(KBEngine.Entity, EntityCommon):
	def __init__(self):
		KBEngine.Entity.__init__(self)
		EntityCommon.__init__(self)
		
	def isItem(self):
		"""
		virtual method.
		"""
		return True
		
	def onDestroy(self):
		"""
		entity销毁
		"""
		room = self.getCurrRoom()
		
		if room == None:
			return
			

