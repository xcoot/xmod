.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v1, -0x40800000    # -1.0f

    .line 17
    .line 18
    cmpl-float v1, v0, v1

    .line 19
    .line 20
    const v2, 0x3faaaaab

    .line 21
    .line 22
    .line 23
    const v3, 0x3fe38e39

    .line 24
    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    cmpl-float v1, v0, v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    cmpl-float v1, v0, v3

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    cmpl-float v0, v0, v2

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v1, "setUserMinAspectRatio:"

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, " is unknown min aspect ratio."

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v0, "MultiTaskingAppCompat"

    .line 63
    .line 64
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    cmpl-float v0, v0, v3

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    const/4 p2, 0x4

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    cmpl-float p2, p2, v2

    .line 86
    .line 87
    if-nez p2, :cond_3

    .line 88
    .line 89
    const/4 p2, 0x3

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 p2, 0x7

    .line 92
    :goto_1
    invoke-static {p1, p0, p2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
