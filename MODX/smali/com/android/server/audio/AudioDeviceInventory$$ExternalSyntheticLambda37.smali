.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 7
    check-cast p2, Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    .line 21
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 23
    const/16 v2, 0x8

    .line 25
    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 28
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    .line 30
    const/16 v3, 0x9

    .line 32
    invoke-direct {v2, p0, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    .line 35
    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;ILjava/util/List;)I

    .line 38
    return-void

    .line 39
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 47
    return-void

    .line 48
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result p1

    .line 52
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 65
    :cond_0
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    if-eqz v0, :cond_1

    .line 69
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    :cond_1
    :goto_0
    throw p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
