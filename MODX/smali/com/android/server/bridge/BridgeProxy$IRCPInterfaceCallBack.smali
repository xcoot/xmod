.class public final Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final cancel(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v0, "cancel"

    .line 6
    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v0, "cancel() session id ="

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string p1, "BridgeProxy"

    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public final copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "copyFile"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "copyFile() srcContainerId="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; srcFilePath="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "BridgeProxy"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v2, "copyFile() destContainerId="

    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "; destFilePath="

    .line 50
    invoke-static {v0, v2, p4, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    :try_start_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 69
    const-string v0, "/mnt/extSdCard"

    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-string v2, "/mnt/sdcard"

    .line 77
    if-eqz v0, :cond_0

    .line 79
    :try_start_1
    const-string v0, "^/mnt/extSdCard"

    .line 81
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p4

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string v0, "/storage/extSdCard"

    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 96
    const-string v0, "^/storage/extSdCard"

    .line 98
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p4

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const-string v0, "/storage/"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v2, "/"

    .line 118
    const/16 v3, 0x9

    .line 120
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 123
    move-result v2

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 127
    move-result v3

    .line 128
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    goto :goto_1

    .line 140
    :goto_0
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 143
    const-string/jumbo v0, "changeExtSdPath(): npe has occured"

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 151
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 153
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 156
    move-result p0

    .line 157
    return p0
.end method

.method public final copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "copyFiles"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "copyFiles() srcContainerId="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; srcFilePaths="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "BridgeProxy"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "copyFiles() destContainerId="

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "; destFilePaths="

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p4}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/Intent;

    .line 73
    const-string/jumbo v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    .line 76
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 85
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    .line 95
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    const-string/jumbo v2, "com.samsung.knox.securefolder"

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    .line 112
    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    const-string/jumbo p4, "task"

    .line 118
    const-string v3, "TASK_COPY_FILES"

    .line 120
    const-string/jumbo v4, "srcContainerId"

    .line 123
    invoke-static {p1, p4, v3, v4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 126
    move-result-object p4

    .line 127
    const-string/jumbo v3, "destContainerId"

    .line 130
    invoke-virtual {p4, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string/jumbo v3, "srcFilePaths"

    .line 136
    invoke-virtual {p4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    const-string/jumbo v2, "destFilePaths"

    .line 142
    invoke-virtual {p4, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 145
    new-instance p2, Landroid/os/Messenger;

    .line 147
    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    .line 150
    move-result-object p5

    .line 151
    invoke-direct {p2, p5}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 154
    const-string/jumbo p5, "callBackMessenger"

    .line 157
    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 163
    move-result-wide v2

    .line 164
    const-wide v4, 0x40c3880000000000L    # 10000.0

    .line 169
    mul-double/2addr v2, v4

    .line 170
    double-to-long v2, v2

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    move-result-object p2

    .line 175
    new-instance p5, Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v4, "copyFiles() ,mSessionId :"

    .line 180
    invoke-direct {p5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p2

    .line 190
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo p2, "sessionId"

    .line 196
    invoke-virtual {p4, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 202
    if-nez p1, :cond_2

    .line 204
    move p1, p3

    .line 205
    :cond_2
    const-string/jumbo p2, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    .line 208
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 213
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 215
    new-instance p2, Landroid/os/UserHandle;

    .line 217
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 220
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_2

    .line 224
    :catch_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :goto_2
    return-wide v2
.end method

.method public final copyFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "copyFiles"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "copyFiles2() srcContainerId="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; srcFilePaths="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "BridgeProxy"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "copyFiles2() destContainerId="

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "; destFilePaths="

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p4}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, " , SourceClassName : "

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/content/Intent;

    .line 81
    const-string/jumbo v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    .line 84
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 93
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    const-string/jumbo v2, "com.samsung.knox.securefolder"

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    .line 120
    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    const-string/jumbo p4, "task"

    .line 126
    const-string v3, "TASK_COPY_FILES"

    .line 128
    const-string/jumbo v4, "srcContainerId"

    .line 131
    invoke-static {p1, p4, v3, v4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 134
    move-result-object p4

    .line 135
    const-string/jumbo v3, "destContainerId"

    .line 138
    invoke-virtual {p4, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string/jumbo v3, "srcFilePaths"

    .line 144
    invoke-virtual {p4, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    const-string/jumbo v2, "destFilePaths"

    .line 150
    invoke-virtual {p4, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    const-string/jumbo p2, "sourceClassName"

    .line 156
    invoke-virtual {p4, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance p2, Landroid/os/Messenger;

    .line 161
    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    .line 164
    move-result-object p5

    .line 165
    invoke-direct {p2, p5}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 168
    const-string/jumbo p5, "callBackMessenger"

    .line 171
    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 177
    move-result-wide p5

    .line 178
    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 183
    mul-double/2addr p5, v2

    .line 184
    double-to-long p5, p5

    .line 185
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object p2

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v3, "copyFiles2() ,mSessionId :"

    .line 194
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p2

    .line 204
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string/jumbo p2, "sessionId"

    .line 210
    invoke-virtual {p4, p2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    if-nez p1, :cond_2

    .line 218
    move p1, p3

    .line 219
    :cond_2
    const-string/jumbo p2, "copyFiles2(), Starting FileOperationsHandler service TASK_COPY_FILES"

    .line 222
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 227
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 229
    new-instance p2, Landroid/os/UserHandle;

    .line 231
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 234
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_2

    .line 238
    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    :goto_2
    return-wide p5
.end method

.method public final getErrorMessage(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v0, "getErrorMessage"

    .line 6
    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v0, "getErrorMessage(): errorId : "

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string p1, "BridgeProxy"

    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string p0, "General error"

    .line 31
    return-object p0
.end method

.method public final getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "getFileInfo"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "get File Info : path="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; containerId="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "BridgeProxy"

    .line 27
    invoke-static {v0, p2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 32
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v0, "getFiles"

    .line 6
    invoke-static {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v0, "get filesg ["

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p2, "], "

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, "BridgeProxy"

    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final isFileExist(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "isFileExist"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "file exist checking ["

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "], "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "BridgeProxy"

    .line 27
    invoke-static {v0, p1, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 32
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo p1, "moveFile"

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    const-string p0, "BridgeProxy"

    .line 11
    const-string p1, "ERROR || Deprecated API level - move file"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public final moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "moveFiles"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "moveFiles() srcContainerId="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; srcFilePaths="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "BridgeProxy"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "moveFiles() destContainerId="

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "; destFilePaths="

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p4}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/Intent;

    .line 73
    const-string/jumbo v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    .line 76
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 85
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    .line 95
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    const-string/jumbo v2, "com.samsung.knox.securefolder"

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    .line 112
    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    const-string/jumbo p4, "task"

    .line 118
    const-string v3, "TASK_MOVE_FILES"

    .line 120
    const-string/jumbo v4, "srcContainerId"

    .line 123
    invoke-static {p1, p4, v3, v4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 126
    move-result-object p1

    .line 127
    const-string/jumbo p4, "destContainerId"

    .line 130
    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string/jumbo p3, "srcFilePaths"

    .line 136
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    const-string/jumbo p3, "destFilePaths"

    .line 142
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 145
    new-instance p2, Landroid/os/Messenger;

    .line 147
    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    .line 150
    move-result-object p3

    .line 151
    invoke-direct {p2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 154
    const-string/jumbo p3, "callBackMessenger"

    .line 157
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 163
    move-result-wide p2

    .line 164
    const-wide p4, 0x40c3880000000000L    # 10000.0

    .line 169
    mul-double/2addr p2, p4

    .line 170
    double-to-long p2, p2

    .line 171
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    move-result-object p4

    .line 175
    new-instance p5, Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v2, "moveFiles ,mSessionId :"

    .line 180
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p4

    .line 190
    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo p4, "sessionId"

    .line 196
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 202
    const-string/jumbo p1, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    .line 205
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 210
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 212
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 214
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_2

    .line 218
    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    :goto_2
    return-wide p2
.end method

.method public final moveFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "moveFiles"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "moveFiles2() srcContainerId="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "; srcFilePaths="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "BridgeProxy"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "moveFiles2() destContainerId="

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "; destFilePaths="

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p4}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, " , SourceClassName : "

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/content/Intent;

    .line 81
    const-string/jumbo v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    .line 84
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 93
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    const-string/jumbo v2, "com.samsung.knox.securefolder"

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    .line 120
    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    const-string/jumbo p4, "task"

    .line 126
    const-string v3, "TASK_MOVE_FILES"

    .line 128
    const-string/jumbo v4, "srcContainerId"

    .line 131
    invoke-static {p1, p4, v3, v4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 134
    move-result-object p1

    .line 135
    const-string/jumbo p4, "destContainerId"

    .line 138
    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string/jumbo p3, "srcFilePaths"

    .line 144
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    const-string/jumbo p3, "destFilePaths"

    .line 150
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    const-string/jumbo p2, "sourceClassName"

    .line 156
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance p2, Landroid/os/Messenger;

    .line 161
    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    .line 164
    move-result-object p3

    .line 165
    invoke-direct {p2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 168
    const-string/jumbo p3, "callBackMessenger"

    .line 171
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 177
    move-result-wide p2

    .line 178
    const-wide p4, 0x40c3880000000000L    # 10000.0

    .line 183
    mul-double/2addr p2, p4

    .line 184
    double-to-long p2, p2

    .line 185
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object p4

    .line 189
    new-instance p5, Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo p6, "moveFiles2 ,mSessionId :"

    .line 194
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p4

    .line 204
    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string/jumbo p4, "sessionId"

    .line 210
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    const-string/jumbo p1, "moveFiles2(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    .line 219
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 224
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 226
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 228
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_2

    .line 232
    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :goto_2
    return-wide p2
.end method

.method public final moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 9

    .line 1
    const-string/jumbo v0, "moveFilesForAppEx() reqApp="

    .line 4
    const-string/jumbo v1, "moveFilesForAppEx() destContainerId="

    .line 7
    const-string/jumbo v2, "moveFilesForAppEx() srcContainerId="

    .line 10
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 12
    const-string/jumbo v4, "moveFilesForApp"

    .line 15
    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 20
    iget v3, v3, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 22
    const-wide/16 v4, 0x0

    .line 24
    const-string v6, "BridgeProxy"

    .line 26
    if-nez p2, :cond_0

    .line 28
    :try_start_0
    const-string p0, "ERROR | move Files For App Ex | invalid source file Paths, paths are null"

    .line 30
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-wide v4

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto/16 :goto_3

    .line 37
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "; srcFilePaths.size()="

    .line 47
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 53
    move-result v2

    .line 54
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "; destFilePaths.size()="

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 80
    move-result v1

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    .line 117
    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    new-instance p3, Landroid/content/Intent;

    .line 122
    const-string/jumbo v2, "com.sec.knox.bridge.MOVE_TO_KNOX"

    .line 125
    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const/high16 v2, 0x10000000

    .line 130
    invoke-virtual {p3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    new-instance v2, Landroid/os/Bundle;

    .line 135
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string/jumbo v7, "task"

    .line 141
    const-string v8, "TASK_MOVE_FILES"

    .line 143
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v7, "requestApp"

    .line 149
    invoke-virtual {v2, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string/jumbo p1, "srcContainerId"

    .line 155
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string/jumbo p1, "destContainerId"

    .line 161
    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string/jumbo p1, "fileCount"

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 170
    move-result p2

    .line 171
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo p1, "srcFilePaths"

    .line 177
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    const-string/jumbo p1, "destFilePaths"

    .line 183
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 186
    const-string/jumbo p1, "moveToFor"

    .line 189
    const-string p2, "File"

    .line 191
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const/16 p1, -0x3e8

    .line 199
    const-string/jumbo p2, "com.samsung.knox.securefolder.switcher.SwitchAliasActivity"

    .line 202
    const-string/jumbo v0, "com.samsung.knox.securefolder"

    .line 205
    if-ne p4, p1, :cond_1

    .line 207
    :try_start_1
    const-string p1, "Need to Create secure Folder"

    .line 209
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 214
    iget-object p1, p1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 216
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 219
    move-result p1

    .line 220
    if-gtz p1, :cond_1

    .line 222
    const-string/jumbo p1, "isSilent"

    .line 225
    const/4 p4, 0x1

    .line 226
    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    invoke-virtual {p3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 237
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 239
    new-instance p2, Landroid/os/UserHandle;

    .line 241
    const/4 p4, 0x0

    .line 242
    invoke-direct {p2, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 245
    invoke-static {p0, p1, p3, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 248
    return-wide v4

    .line 249
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 252
    move-result p1

    .line 253
    if-nez p1, :cond_5

    .line 255
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_2

    .line 261
    goto :goto_1

    .line 262
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 265
    move-result p1

    .line 266
    if-nez p1, :cond_4

    .line 268
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 271
    move-result p1

    .line 272
    if-eqz p1, :cond_3

    .line 274
    goto :goto_0

    .line 275
    :cond_3
    const-string p0, "ERROR | move Files For App Ex | invalid container id is -1"

    .line 277
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-wide v4

    .line 281
    :cond_4
    :goto_0
    const-string/jumbo p1, "com.samsung.android.knox.containercore"

    .line 284
    const-string/jumbo p2, "com.samsung.android.knox.containercore.rcpcomponents.move.activity.MoveToKnoxGateActivity"

    .line 287
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    goto :goto_2

    .line 291
    :cond_5
    :goto_1
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :goto_2
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 296
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 298
    iget-object p2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 300
    invoke-static {p0, p1, p3, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    goto :goto_4

    .line 304
    :goto_3
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 307
    :goto_4
    return-wide v4
.end method

.method public final moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 3
    const-string/jumbo v1, "moveFilesForApp"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 11
    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 13
    const-string/jumbo v1, "moveUnlimitedFilesForApp() srcContainerId="

    .line 16
    const-string v2, "; destContainerId="

    .line 18
    const-string v3, "; uri="

    .line 20
    invoke-static {v0, p4, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v1

    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string/jumbo v2, "null"

    .line 34
    :goto_0
    const-string v3, "; fileCount="

    .line 36
    const-string/jumbo v4, "reqApp = "

    .line 39
    invoke-static {p3, v2, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    const-string v2, "BridgeProxy"

    .line 55
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-wide/16 v3, 0x0

    .line 60
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 62
    const-string/jumbo v5, "com.sec.knox.bridge.MOVE_TO_KNOX"

    .line 65
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v5, Landroid/os/Bundle;

    .line 70
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string/jumbo v6, "task"

    .line 76
    const-string v7, "TASK_MOVE_FILES"

    .line 78
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v6, "requestApp"

    .line 84
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo p1, "srcContainerId"

    .line 90
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string/jumbo p1, "destContainerId"

    .line 96
    invoke-virtual {v5, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo p1, "fileCount"

    .line 102
    invoke-virtual {v5, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string/jumbo p1, "moveToFor"

    .line 108
    const-string p3, "File"

    .line 110
    invoke-virtual {v5, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo p1, "isUnlimitedSharing"

    .line 116
    const/4 p3, 0x1

    .line 117
    invoke-virtual {v5, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string/jumbo p1, "unlimitedMoveUri"

    .line 123
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/16 p1, -0x3e8

    .line 131
    const-string/jumbo p2, "com.samsung.knox.securefolder.switcher.SwitchAliasActivity"

    .line 134
    const-string/jumbo v6, "com.samsung.knox.securefolder"

    .line 137
    if-ne p4, p1, :cond_1

    .line 139
    :try_start_1
    const-string p1, "Need to Create secure Folder"

    .line 141
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 146
    iget-object p1, p1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 151
    move-result p1

    .line 152
    if-gtz p1, :cond_1

    .line 154
    const-string/jumbo p1, "isSilent"

    .line 157
    invoke-virtual {v5, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 168
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 170
    new-instance p2, Landroid/os/UserHandle;

    .line 172
    const/4 p3, 0x0

    .line 173
    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 176
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 179
    return-wide v3

    .line 180
    :catch_0
    move-exception p0

    .line 181
    goto :goto_4

    .line 182
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_5

    .line 188
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_2

    .line 194
    goto :goto_2

    .line 195
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_4

    .line 201
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_3

    .line 207
    goto :goto_1

    .line 208
    :cond_3
    const-string p0, "ERROR | move Files For App Ex | invalid container id is -1"

    .line 210
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-wide v3

    .line 214
    :cond_4
    :goto_1
    const-string/jumbo p1, "com.samsung.android.knox.containercore"

    .line 217
    const-string/jumbo p2, "com.samsung.android.knox.containercore.rcpcomponents.move.activity.MoveToKnoxGateActivity"

    .line 220
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    goto :goto_3

    .line 224
    :cond_5
    :goto_2
    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :goto_3
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 229
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 231
    iget-object p2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 233
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/bridge/BridgeProxy;->-$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    goto :goto_5

    .line 237
    :goto_4
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 240
    :goto_5
    return-wide v3
.end method
