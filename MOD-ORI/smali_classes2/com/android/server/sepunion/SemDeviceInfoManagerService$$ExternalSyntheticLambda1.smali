.class public final synthetic Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    sget v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Failed to unregister receiver "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "SemDeviceInfoManagerService"

    .line 39
    .line 40
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroid/database/ContentObserver;

    .line 49
    .line 50
    sget v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_1
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
