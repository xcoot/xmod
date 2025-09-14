.class public final synthetic Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/VibrationEffect$Transformation;


# virtual methods
.method public final transform(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
