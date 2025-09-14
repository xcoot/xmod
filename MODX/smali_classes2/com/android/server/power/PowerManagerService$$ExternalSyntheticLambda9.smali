.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    .line 6
    .line 7
    return p0
.end method
