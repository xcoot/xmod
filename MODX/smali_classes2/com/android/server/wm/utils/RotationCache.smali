.class public final Lcom/android/server/wm/utils/RotationCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCache:Landroid/util/SparseArray;

.field public mCachedFor:Ljava/lang/Object;

.field public final mComputation:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;

    .line 28
    .line 29
    iget v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->$r8$classId:I

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    check-cast p2, Landroid/view/DisplayShape;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    sget-object p2, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_2
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/DisplayShape;->setRotation(I)Landroid/view/DisplayShape;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    goto :goto_3

    .line 54
    :pswitch_0
    check-cast p2, Landroid/view/PrivacyIndicatorBounds;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    new-instance p2, Landroid/view/PrivacyIndicatorBounds;

    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-direct {p2, v0, p1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/PrivacyIndicatorBounds;->rotate(I)Landroid/view/PrivacyIndicatorBounds;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    goto :goto_3

    .line 77
    :pswitch_1
    check-cast p2, Landroid/view/RoundedCorners;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_9

    .line 85
    .line 86
    sget-object v1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    .line 87
    .line 88
    if-ne p2, v1, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    if-nez p1, :cond_6

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 95
    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 102
    .line 103
    :goto_0
    if-eqz v1, :cond_8

    .line 104
    .line 105
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_8
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 109
    .line 110
    :goto_1
    invoke-virtual {p2, p1, v2, v0}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    goto :goto_3

    .line 115
    :cond_9
    :goto_2
    sget-object p2, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 119
    .line 120
    check-cast p2, Landroid/view/DisplayCutout;

    .line 121
    .line 122
    invoke-static {v0, p2, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$OlRwH3_Eqb403xPL7MPG5vhH0aE(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object p2

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
