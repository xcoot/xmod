.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBuffer:[B

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->$r8$classId:I

    .line 3
    packed-switch p2, :pswitch_data_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 11
    const/4 p1, 0x4

    .line 12
    new-array p1, p1, [B

    .line 14
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 22
    const/16 p1, 0x8

    .line 24
    new-array p1, p1, [B

    .line 26
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clear(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 8
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/16 v2, 0x8

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eq p1, v1, :cond_2

    .line 17
    move p1, v3

    .line 18
    :goto_0
    if-ge p1, v2, :cond_1

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 22
    aget-byte v4, v4, p1

    .line 24
    if-eqz v4, :cond_0

    .line 26
    const-string p1, "WirelessKeyboardMouseShare"

    .line 28
    const-string v4, "Keyboard need clear()."

    .line 30
    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_5

    .line 36
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    goto :goto_4

    .line 41
    :cond_2
    :goto_1
    move p1, v3

    .line 42
    :goto_2
    if-ge p1, v2, :cond_3

    .line 44
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 46
    aput-byte v3, v4, p1

    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 53
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 55
    invoke-static {p1, v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 60
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 62
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 66
    invoke-virtual {v2, p1, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    goto :goto_3

    .line 70
    :catch_0
    :try_start_2
    const-string p0, "WirelessKeyboardMouseShare"

    .line 72
    const-string/jumbo p1, "ignore nullpointer exception "

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_3
    monitor-exit v0

    .line 79
    :goto_4
    return-void

    .line 80
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 84
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 86
    monitor-enter v0

    .line 87
    const/4 v1, 0x1

    .line 88
    const/4 v2, 0x0

    .line 89
    if-eq p1, v1, :cond_5

    .line 91
    :try_start_3
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 93
    aget-byte p1, p1, v2

    .line 95
    if-nez p1, :cond_4

    .line 97
    monitor-exit v0

    .line 98
    goto :goto_7

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    goto :goto_8

    .line 101
    :cond_4
    const-string p1, "WirelessKeyboardMouseShare"

    .line 103
    const-string v3, "Mouse need clear()."

    .line 105
    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 110
    aput-byte v2, p1, v2

    .line 112
    aput-byte v2, p1, v1

    .line 114
    const/4 v1, 0x2

    .line 115
    aput-byte v2, p1, v1

    .line 117
    const/4 v3, 0x3

    .line 118
    aput-byte v2, p1, v3

    .line 120
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 122
    invoke-static {v2, v1, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 127
    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 129
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 131
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 133
    invoke-virtual {v2, p1, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    goto :goto_6

    .line 137
    :catch_1
    :try_start_5
    const-string p0, "WirelessKeyboardMouseShare"

    .line 139
    const-string/jumbo p1, "ignore nullpointer exception "

    .line 142
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_6
    monitor-exit v0

    .line 146
    :goto_7
    return-void

    .line 147
    :goto_8
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    throw p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
