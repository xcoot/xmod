.class public final Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

.field public final mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

.field public mCurrentAlpha:F

.field public mCurrentBlur:I

.field public final mDuration:J

.field public mStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 15
    .line 16
    iput-wide p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    long-to-float p3, p3

    .line 10
    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 15
    .line 16
    iget-object v0, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v1, p4

    .line 27
    check-cast v1, Ljava/lang/Float;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sub-float/2addr v0, v1

    .line 34
    mul-float/2addr v0, p3

    .line 35
    check-cast p4, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    add-float/2addr p4, v0

    .line 42
    iput p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    .line 43
    .line 44
    float-to-int p3, p3

    .line 45
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 46
    .line 47
    iget-object v0, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v1, p4

    .line 58
    check-cast v1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-int/2addr v0, v1

    .line 65
    mul-int/2addr v0, p3

    .line 66
    check-cast p4, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    add-int/2addr p3, v0

    .line 73
    iput p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    const-string p4, " after release"

    .line 80
    .line 81
    const-string v0, "Dimmer#AnimationSpec tried to access "

    .line 82
    .line 83
    const-string v1, "WindowManager"

    .line 84
    .line 85
    if-eqz p3, :cond_1

    .line 86
    .line 87
    :try_start_0
    iget p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    .line 88
    .line 89
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 90
    .line 91
    .line 92
    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 93
    .line 94
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "from_alpha="

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, " to_alpha="

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p2, "from_blur="

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 35
    .line 36
    iget-object v0, p2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string v0, " to_blur="

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string p2, " duration="

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 1
    const-wide v0, 0x10b00000003L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 11
    .line 12
    iget-object v3, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Ljava/lang/Float;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-wide v4, 0x10200000001L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-wide v3, 0x10200000002L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 42
    .line 43
    .line 44
    const-wide v2, 0x10300000003L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iget-wide v4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    .line 50
    .line 51
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Animation spec: alpha="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", blur="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
