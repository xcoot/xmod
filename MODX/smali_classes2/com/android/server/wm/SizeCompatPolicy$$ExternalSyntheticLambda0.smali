.class public final synthetic Lcom/android/server/wm/SizeCompatPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SizeCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mSizeCompatAttributes:Lcom/android/server/wm/SizeCompatAttributes;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/server/wm/SizeCompatAttributes;->cleanUp(Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
