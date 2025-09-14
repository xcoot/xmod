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

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{keyboardLanguageTag = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " keyboardLayoutType = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    .line 20
    .line 21
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutNameFromValue(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " keyboardLayoutName = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " layoutSelectionCriteria = "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    .line 44
    .line 45
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->layoutSelectionCriteriaToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " imeLanguageTag = "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " imeLayoutType = "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    .line 68
    .line 69
    invoke-static {p0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutNameFromValue(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string/jumbo p0, "}"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
