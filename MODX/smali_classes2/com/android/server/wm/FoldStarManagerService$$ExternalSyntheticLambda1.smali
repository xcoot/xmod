.class public final synthetic Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserOrSystemMinAspectRatio(ILjava/lang/String;)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x4

    .line 37
    if-ne p0, p1, :cond_0

    .line 38
    .line 39
    const p0, 0x3fe38e39

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x3

    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    const p0, 0x3faaaaab

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/high16 p0, -0x40800000    # -1.0f

    .line 53
    .line 54
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 62
    .line 63
    check-cast p1, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserOrSystemMinAspectRatio(ILjava/lang/String;)F

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
