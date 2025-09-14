.class Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final imeLanguageTag:Ljava/lang/String;

.field public final imeLayoutType:I

.field public final keyboardLanguageTag:Ljava/lang/String;

.field public final keyboardLayoutName:Ljava/lang/String;

.field public final keyboardLayoutType:I

.field public final layoutSelectionCriteria:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    .line 6
    iput-object p3, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    .line 12
    iput p6, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    .line 14
    iput-object p5, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{keyboardLanguageTag = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " keyboardLayoutType = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    .line 21
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutNameFromValue(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " keyboardLayoutName = "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " layoutSelectionCriteria = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    .line 45
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->layoutSelectionCriteriaToString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " imeLanguageTag = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " imeLayoutType = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    .line 69
    invoke-static {p0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutNameFromValue(I)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo p0, "}"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
