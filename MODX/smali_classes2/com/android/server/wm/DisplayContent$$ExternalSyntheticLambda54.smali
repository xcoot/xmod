.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$0:[I

    return-void
.end method

.method public synthetic constructor <init>([I[ILandroid/graphics/Region;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$0:[I

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/io/PrintWriter;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$0:[I

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 19
    .line 20
    const-string v2, "Window #"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    aget v3, p0, v2

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ": "

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    aget p1, p0, v2

    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    aput p1, p0, v2

    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$0:[I

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, [I

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;->f$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Landroid/graphics/Region;

    .line 63
    .line 64
    check-cast p1, Landroid/graphics/Rect;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    aget v3, v0, v2

    .line 68
    .line 69
    if-gtz v3, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    aget v4, v1, v2

    .line 77
    .line 78
    add-int/2addr v4, v3

    .line 79
    aput v4, v1, v2

    .line 80
    .line 81
    aget v1, v0, v2

    .line 82
    .line 83
    if-le v3, v1, :cond_1

    .line 84
    .line 85
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    sub-int/2addr v4, v1

    .line 88
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 89
    .line 90
    :cond_1
    sub-int/2addr v1, v3

    .line 91
    aput v1, v0, v2

    .line 92
    .line 93
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
