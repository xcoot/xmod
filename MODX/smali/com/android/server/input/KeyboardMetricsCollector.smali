.class public abstract Lcom/android/server/input/KeyboardMetricsCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_LANGUAGE_TAG:Ljava/lang/String; = "None"

.field static final DEFAULT_LAYOUT_NAME:Ljava/lang/String; = "Default"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "KeyboardMetricCollector"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    .line 10
    return-void
.end method

.method public static varargs logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;I[I)V
    .locals 8

    .line 1
    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "KeyboardMetricCollector"

    .line 18
    if-nez p1, :cond_1

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string p1, "Invalid keyboard event logging, keycode = "

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, ", modifier state = "

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    .line 53
    move-result v2

    .line 54
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    .line 57
    move-result v3

    .line 58
    invoke-virtual {p1}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getIntValue()I

    .line 61
    move-result v4

    .line 62
    invoke-virtual {p0}, Landroid/view/InputDevice;->getDeviceBus()I

    .line 65
    move-result v7

    .line 66
    const/16 v1, 0x2ab

    .line 68
    move-object v5, p3

    .line 69
    move v6, p2

    .line 70
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[III)V

    .line 73
    sget-boolean p0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    .line 75
    if-eqz p0, :cond_2

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    const-string p2, "Logging Keyboard system event: "

    .line 81
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->-$$Nest$fgetmName(Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    :goto_0
    return-void
.end method
