.class public final Lcom/android/server/display/WifiDisplayAdapter$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;II)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .locals 0

    const/16 p2, 0x8

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 55
    .line 56
    new-instance v1, Lcom/android/server/display/DlnaController;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v3, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/DlnaController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 68
    .line 69
    new-instance v1, Lcom/android/server/display/VolumeController;

    .line 70
    .line 71
    iget-object v2, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 74
    .line 75
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/VolumeController;-><init>(Landroid/os/Handler;Lcom/android/server/display/DlnaController;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 79
    .line 80
    new-instance v7, Landroid/content/IntentFilter;

    .line 81
    .line 82
    const-string v0, "android.server.display.wfd.DISCONNECT"

    .line 83
    .line 84
    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 100
    .line 101
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    const/4 v8, 0x0

    .line 112
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Lcom/android/server/display/WifiDisplayAdapter$13;

    .line 113
    .line 114
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 115
    .line 116
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
