.class public final Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mBTAllowList:Ljava/util/List;

.field public mBTTargetList:Ljava/util/List;

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/16 p0, 0x1b

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBTUsingPackages()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 10
    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 20
    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getHWUsingApps()Ljava/util/Map;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_4

    .line 28
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x1

    .line 59
    if-ne v2, v3, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/List;

    .line 67
    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v3, 0x2

    .line 71
    if-ne v2, v3, :cond_2

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/util/List;

    .line 79
    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTTargetList:Ljava/util/List;

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return-void
.end method
