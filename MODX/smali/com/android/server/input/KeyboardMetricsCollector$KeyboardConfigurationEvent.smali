.class public final Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInputDevice:Landroid/view/InputDevice;

.field public final mIsFirstConfiguration:Z

.field public final mLayoutConfigurations:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mIsFirstConfiguration:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mLayoutConfigurations:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "InputDevice = {VendorId = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 10
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVendorId()I

    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", ProductId = "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 28
    invoke-virtual {v1}, Landroid/view/InputDevice;->getProductId()I

    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ", Device Bus = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 46
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDeviceBus()I

    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "}, isFirstConfiguration = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mIsFirstConfiguration:Z

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", LayoutConfigurations = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mLayoutConfigurations:Ljava/util/List;

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
