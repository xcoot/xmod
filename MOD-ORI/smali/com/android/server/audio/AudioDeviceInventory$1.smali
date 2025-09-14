.class Lcom/android/server/audio/AudioDeviceInventory$1;
.super Ljava/util/LinkedHashMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$1;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "audio.device."

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 11
    .line 12
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 27
    .line 28
    iget-object v2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v0, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object p2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    const-string/jumbo p1, "connected"

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string/jumbo p1, "disconnected"

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 10
    .line 11
    const-string/jumbo p1, "put"

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p1, "putIfAbsent"

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz p0, :cond_0

    .line 2
    const-string/jumbo p1, "remove"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo p1, "remove"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return p0
.end method
