local QBCore = exports['qb-core']:GetCoreObject()

local isMelting = false
local canTake = false
local meltTime
local meltedItem = {}

--Esrar

RegisterNetEvent('qb-pawnshop:client:openMenu1', function()
        local pawnShop = {
            {
                header = "Esrar Satış",
                isMenuHeader = true,
            },
            {
                header = "Esrar Satış",
                txt = "Üzerindeki esraları paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn1',
                    args = {
                        items = Config.PawnItems1
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn1', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Esrar Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems1',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu1'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems1', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Esra Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)

--Kokain

RegisterNetEvent('qb-pawnshop:client:openMenu2', function()
        local pawnShop = {
            {
                header = "Kokain Satış",
                isMenuHeader = true,
            },
            {
                header = "Kokain Satış",
                txt = "Üzerindeki Kokainleri paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn2',
                    args = {
                        items = Config.PawnItems2
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn2', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Kokain Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems2',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu2'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems2', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Kokain Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)

--Meth

RegisterNetEvent('qb-pawnshop:client:openMenu3', function()
        local pawnShop = {
            {
                header = "Meth Satış",
                isMenuHeader = true,
            },
            {
                header = "Meth Satış",
                txt = "Üzerindeki methi paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn3',
                    args = {
                        items = Config.PawnItems3
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn3', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Meth Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems3',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu3'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems3', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Meth Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)

-- Kaçakçı

RegisterNetEvent('qb-pawnshop:client:openMenu4', function()
        local pawnShop = {
            {
                header = "Kaçak Eşya Satış",
                isMenuHeader = true,
            },
            {
                header = "Kaçak Eşya Satış",
                txt = "Üzerindeki kaçak eşyaları paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn4',
                    args = {
                        items = Config.PawnItems4
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn4', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Kaçak Eşya Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems4',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu4'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems4', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Kaçak Eşya Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)

--SOYGUN SATIŞ

RegisterNetEvent('qb-pawnshop:client:openMenu5', function()
        local pawnShop = {
            {
                header = "Kaçak Eşya Satış",
                isMenuHeader = true,
            },
            {
                header = "Kaçak Eşya Satış",
                txt = "Üzerindeki kaçak eşyaları paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn5',
                    args = {
                        items = Config.PawnItems5
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn5', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Kaçak Eşya Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems5',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu5'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems5', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Kaçak Eşya Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems2', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)

--Balık Satış


RegisterNetEvent('qb-pawnshop:client:openMenu6', function()
        local pawnShop = {
            {
                header = "Balık Satış",
                isMenuHeader = true,
            },
            {
                header = "Balık Satış",
                txt = "Üzerindeki balıkları paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn6',
                    args = {
                        items = Config.PawnItems6
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn6', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Balık Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems6',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu6'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems6', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Balık Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)


RegisterNetEvent('qb-pawnshop:client:openMenu7', function()
        local pawnShop = {
            {
                header = "Maden Satış",
                isMenuHeader = true,
            },
            {
                header = "Maden Satış",
                txt = "Üzerindeki madenleri paraya çevir",
                params = {
                    event = 'qb-pawnshop:client:openPawn7',
                    args = {
                        items = Config.PawnItems7
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(pawnShop)
end)

RegisterNetEvent('qb-pawnshop:client:openPawn7', function(data)
    QBCore.Functions.TriggerCallback('qb-pawnshop:server:getInv', function(inventory)
        local PlyInv = inventory
        local pawnMenu = {
            {
                header = "Maden Satış",
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    pawnMenu[#pawnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'qb-pawnshop:client:pawnitems7',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        pawnMenu[#pawnMenu + 1] = {
            header = "Geri",
            params = {
                event = 'qb-pawnshop:client:openMenu7'
            }
        }
        exports['qb-menu']:openMenu(pawnMenu)
    end)
end)

RegisterNetEvent('qb-pawnshop:client:pawnitems7', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = "Maden Satış",
        submitText = "Sat",
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 and tonumber(sellingItem.amount) <= item.amount then
            TriggerServerEvent('qb-pawnshop:server:sellPawnItems', item.name, sellingItem.amount, item.price)
        else
            QBCore.Functions.Notify("Geçersiz miktar", 'info')
        end
    end
end)



RegisterNetEvent('qb-pawnshop:client:resetPickup', function()
    canTake = false
end)
