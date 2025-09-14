.class public final Lcom/android/server/display/feature/DeviceConfigParameterProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;


# direct methods
.method public constructor <init>(Landroid/provider/DeviceConfigInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 6
    return-void
.end method


# virtual methods
.method public final getIntArrayProperty(Ljava/lang/String;)[I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 3
    const-string/jumbo v0, "display_manager"

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p0, v0, p1, v1}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 13
    const-string p1, ","

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    array-length v0, p1

    .line 20
    new-array v2, v0, [I

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v0, :cond_0

    .line 25
    :try_start_0
    aget-object v4, p1, v3

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v4

    .line 31
    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "Incorrect format for array: \'"

    .line 41
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p0, "\'"

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string v0, "DisplayFeatureProvider"

    .line 58
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    move-object v1, v2

    .line 63
    :cond_1
    :goto_1
    return-object v1
.end method
