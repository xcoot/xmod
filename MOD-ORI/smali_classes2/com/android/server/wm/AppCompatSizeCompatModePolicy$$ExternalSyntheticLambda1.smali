.class public final synthetic Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
