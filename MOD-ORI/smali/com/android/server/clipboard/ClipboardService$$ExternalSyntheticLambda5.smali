.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/ClipboardService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/clipboard/ClipboardService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$3:Landroid/util/ArraySet;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/clipboard/ClipboardService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->f$3:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v3, v1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v3, 0x1040f53

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "ClipboardService"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v4, v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/util/SafetyProtectionUtils;->shouldShowSafetyProtectionResources(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const v6, 0x10800b5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v2, v6, v1, v5, v3}, Landroid/widget/Toast;->makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v2, v3, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    :cond_1
    return-void
.end method
