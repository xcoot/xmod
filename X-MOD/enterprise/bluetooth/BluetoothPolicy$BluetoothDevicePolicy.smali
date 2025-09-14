.class public final Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public bUpdateToDB:Z

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEffectiveBlacklist:Ljava/util/List;

.field public final mEffectiveWhitelist:Ljava/util/List;

.field public final mTable:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveBlacklist:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveWhitelist:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 5
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mTable:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    .line 9
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    const-string p1, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 11
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 12
    const-string p1, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static addList(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 14
    const-string v2, "*"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 25
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void

    .line 29
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeDuplicates(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public static logList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 8
    const-string/jumbo v1, "logList:"

    .line 11
    const-string v2, " "

    .line 13
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "BlackWhiteListPolicyService"

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public static removeDuplicates(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    return-void
.end method

.method public static subtractList(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 14
    const-string v2, "*"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public final addObjectsToList(ILjava/lang/String;Ljava/util/List;)Z
    .locals 8

    .line 1
    invoke-static {p3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeDuplicates(Ljava/util/List;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 12
    new-instance v2, Landroid/content/ContentValues;

    .line 14
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 17
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 23
    const-string v4, "Object"

    .line 25
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    const-string v5, "adminUid"

    .line 34
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "ListType"

    .line 39
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v6, Landroid/content/ContentValues;

    .line 44
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 47
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Ljava/lang/String;

    .line 53
    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mTable:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v4, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_0

    .line 76
    return v0

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 83
    const/4 p0, 0x1

    .line 84
    return p0
.end method

.method public final clearObjectsFromList(ILjava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "adminUid"

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "ListType"

    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    iget-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mTable:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I

    .line 28
    move-result p1

    .line 29
    const/4 p2, -0x1

    .line 30
    if-ne p1, p2, :cond_0

    .line 32
    return v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 36
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public final getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "BlackWhiteListPolicyService"

    .line 3
    const-string v1, "Object"

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mTable:Ljava/lang/String;

    .line 14
    const-string v5, "ListType"

    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v6, Landroid/content/ContentValues;

    .line 21
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-static {p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 28
    move-result-wide v7

    .line 29
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object p1

    .line 33
    const-string v7, "adminUid"

    .line 35
    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    invoke-virtual {v6, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4, p0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 47
    check-cast p3, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 52
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 58
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    move-result p0

    .line 62
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_4

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    if-eqz v3, :cond_1

    .line 76
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string p2, "Exception occurred accessing Enterprise db "

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v3, :cond_1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    :goto_3
    const-string/jumbo p0, "getAllObjectsFromList:"

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 114
    :goto_4
    if-eqz v3, :cond_2

    .line 116
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2
    throw p0
.end method

.method public final getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v3

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 46
    new-instance v5, Lcom/samsung/android/knox/ControlInfo;

    .line 48
    invoke-direct {v5}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    .line 51
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    iput-object v3, v5, Lcom/samsung/android/knox/ControlInfo;->adminPackageName:Ljava/lang/String;

    .line 57
    iput-object v4, v5, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    .line 59
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string p0, "BlackWhiteListPolicyService"

    .line 65
    const-string/jumbo p1, "getAllObjectsFromLists:"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v0
.end method

.method public final getEffectiveBlackList()Ljava/util/List;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveBlacklist:Ljava/util/List;

    .line 13
    return-object p0
.end method

.method public final isObjectAllowed(Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 9
    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveWhitelist:Ljava/util/List;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    check-cast v4, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v5

    .line 26
    const-string v6, "*"

    .line 28
    if-ge v3, v5, :cond_3

    .line 30
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/String;

    .line 36
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_2

    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    return v1

    .line 59
    :cond_3
    move v0, v2

    .line 60
    :goto_2
    move-object v3, p0

    .line 61
    check-cast v3, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v4

    .line 67
    if-ge v0, v4, :cond_6

    .line 69
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/String;

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_5

    .line 81
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_3
    return v2

    .line 98
    :cond_6
    return v1
.end method

.method public final isPolicyActive(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string v1, "BLUETOOTH"

    .line 13
    const-string/jumbo v2, "profilePolicyEnabled"

    .line 16
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "BluetoothPolicyService"

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    return v0

    .line 32
    :pswitch_0
    const/4 v0, 0x0

    .line 33
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    const-string v1, "BLUETOOTH"

    .line 39
    const-string/jumbo v2, "devicePolicyEnabled"

    .line 42
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 45
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    const-string p1, "BluetoothPolicyService"

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_1
    return v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final reload()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->bUpdateToDB:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 7
    return-void
.end method

.method public final removeObjectsFromList(ILjava/lang/String;Ljava/util/List;)Z
    .locals 5

    .line 1
    invoke-static {p3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeDuplicates(Ljava/util/List;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 12
    new-instance v2, Ljava/util/HashMap;

    .line 14
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    const-string v3, "adminUid"

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 32
    const-string v4, "Object"

    .line 34
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "ListType"

    .line 39
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mTable:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I

    .line 49
    move-result v2

    .line 50
    const/4 v3, -0x1

    .line 51
    if-ne v2, v3, :cond_0

    .line 53
    return v0

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->updateEffectivePolicy()V

    .line 60
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public final updateEffectivePolicy()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveBlacklist:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEffectiveWhitelist:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    new-instance v2, Ljava/util/HashMap;

    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    new-instance v3, Ljava/util/HashMap;

    .line 22
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v4

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v5

    .line 39
    const-string v6, ": "

    .line 41
    if-eqz v5, :cond_1

    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/Integer;

    .line 49
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v7

    .line 53
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_0

    .line 59
    new-instance v8, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Ljava/util/List;

    .line 81
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Ljava/util/List;

    .line 87
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 90
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 93
    new-instance v10, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v11, Ljava/util/ArrayList;

    .line 100
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 103
    const-string/jumbo v12, "black"

    .line 106
    invoke-virtual {p0, v7, v12, v10}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 109
    invoke-static {v8, v10}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 112
    const-string/jumbo v10, "white"

    .line 115
    invoke-virtual {p0, v7, v10, v11}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 118
    invoke-static {v9, v11}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 121
    invoke-static {v8, v9}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v11, "effectiveblacklist for admin "

    .line 129
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v10

    .line 146
    invoke-static {v10, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v10, "effectivewhitelist for admin "

    .line 154
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    move-result-object v10

    .line 161
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v8

    .line 171
    invoke-static {v8, v9}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 174
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Ljava/util/List;

    .line 180
    invoke-static {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v8, "finalblacklist after adding admin "

    .line 188
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    invoke-static {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 208
    goto/16 :goto_0

    .line 210
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 213
    move-result-object p0

    .line 214
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 217
    move-result-object p0

    .line 218
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_4

    .line 224
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Ljava/lang/Integer;

    .line 236
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 239
    move-result v3

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Ljava/util/List;

    .line 246
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 249
    move-result-object v5

    .line 250
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 253
    move-result-object v5

    .line 254
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    move-result v7

    .line 258
    if-eqz v7, :cond_3

    .line 260
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 269
    move-result-object v8

    .line 270
    check-cast v8, Ljava/lang/Integer;

    .line 272
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 275
    move-result v8

    .line 276
    if-eq v8, v3, :cond_2

    .line 278
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 281
    move-result-object v7

    .line 282
    check-cast v7, Ljava/util/List;

    .line 284
    invoke-static {v4, v7}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    .line 287
    goto :goto_2

    .line 288
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 291
    move-result-object v3

    .line 292
    check-cast v3, Ljava/util/List;

    .line 294
    invoke-static {v1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v4, "finalwhitelist after adding admin "

    .line 302
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 326
    goto :goto_1

    .line 327
    :cond_4
    return-void
.end method
