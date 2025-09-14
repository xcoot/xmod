.class public final Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 3
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "DirEncryptServiceHelper"

    .line 7
    if-nez v0, :cond_5

    .line 9
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto/16 :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    const-string p0, "Not SD card"

    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 41
    const-string/jumbo v0, "newState is a same state with oldState:: newState: "

    .line 44
    const-string v2, " , oldState: "

    .line 46
    const-string v3, " !!!"

    .line 48
    invoke-static {v0, p3, v2, p2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v2, "onVolumeStateChanged UUID : "

    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 65
    invoke-static {v0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 70
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 72
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolId(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 79
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 81
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolFsUuid(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 88
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 90
    invoke-virtual {v0, p3}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolState(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "vold.decrypt"

    .line 96
    const-string v2, ""

    .line 98
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    const-string/jumbo v2, "trigger_restart_min_framework"

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 111
    iget-object v2, v2, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 113
    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_4

    .line 119
    if-eqz p2, :cond_4

    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v3, "onVolumeStateChanged:: "

    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, " , "

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 147
    const-string v3, " , oldstate: "

    .line 149
    const-string v4, " newState: "

    .line 151
    invoke-static {v2, p1, v3, p2, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v2, p3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-nez v0, :cond_4

    .line 159
    iget-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 161
    iget-boolean p1, p1, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 163
    if-nez p1, :cond_3

    .line 165
    const-string/jumbo p1, "unmounted"

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_3

    .line 174
    const-string/jumbo p1, "removed"

    .line 177
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_4

    .line 183
    :cond_3
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 185
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 187
    const/4 p1, 0x3

    .line 188
    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    :cond_4
    return-void

    .line 196
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo p2, "vol.getType() = "

    .line 201
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 207
    move-result p1

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 215
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method
