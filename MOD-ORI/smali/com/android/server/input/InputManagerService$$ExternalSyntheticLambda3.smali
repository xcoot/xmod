.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 5
    .line 6
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 7
    .line 8
    return-void
.end method
