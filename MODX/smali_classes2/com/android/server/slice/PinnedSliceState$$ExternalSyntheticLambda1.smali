.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/PinnedSliceState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/PinnedSliceState;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "Unable to contact "

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/16 v3, 0x1388

    .line 30
    .line 31
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 32
    .line 33
    .line 34
    :goto_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v4, "slice_uri"

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_1
    const-string/jumbo v4, "unpin"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception v2

    .line 65
    :try_start_2
    const-string v3, "PinnedSliceState"

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 73
    .line 74
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v3, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_2
    return-void

    .line 86
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    throw p0

    .line 95
    :pswitch_0
    const-string v0, "Unable to contact "

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x0

    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    move-object v1, v2

    .line 115
    goto :goto_5

    .line 116
    :cond_3
    const-wide/16 v3, 0x1388

    .line 117
    .line 118
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 119
    .line 120
    .line 121
    :goto_5
    if-nez v1, :cond_4

    .line 122
    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    :goto_6
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 126
    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_4
    :try_start_4
    new-instance v3, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v4, "slice_uri"

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 138
    .line 139
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    .line 141
    .line 142
    :try_start_5
    const-string/jumbo v4, "pin"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :catchall_2
    move-exception p0

    .line 150
    goto :goto_8

    .line 151
    :catch_1
    move-exception v2

    .line 152
    :try_start_6
    const-string v3, "PinnedSliceState"

    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 160
    .line 161
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v3, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 169
    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_5
    :goto_7
    return-void

    .line 173
    :goto_8
    :try_start_7
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 174
    .line 175
    .line 176
    goto :goto_9

    .line 177
    :catchall_3
    move-exception v0

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_9
    throw p0

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
