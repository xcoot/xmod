.class public final Lcom/android/server/display/HighBrightnessModeMetadataMapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    .line 11
    return-void
.end method


# virtual methods
.method public final getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    const-string v0, "Display Device is null in DisplayPowerController for display: "

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "HighBrightnessModeMetadataMapper"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v1

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 38
    return-object v1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    .line 41
    iget-object v0, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 49
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 57
    return-object p0

    .line 58
    :cond_2
    new-instance p1, Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 60
    invoke-direct {p1}, Lcom/android/server/display/HighBrightnessModeMetadata;-><init>()V

    .line 63
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p1
.end method
