.class public final Lcom/android/server/gpu/GpuService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method public constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sparse-switch v2, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x2

    .line 56
    goto :goto_0

    .line 57
    :sswitch_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :sswitch_2
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 69
    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v1, 0x0

    .line 78
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_0
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/gpu/GpuService;->fetchProductionDriverPackageProperties()V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    if-eqz p1, :cond_5

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchPrereleaseDriverPackageProperties()V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_1
    return-void

    .line 103
    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
