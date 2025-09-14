.class public final Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;


# instance fields
.field public mBasedOnRealCaller:Z

.field public final mCode:I

.field public mOnlyCreatorAllows:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final allows()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    move p0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    xor-int/2addr p0, v0

    .line 10
    return p0
.end method

.method public setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
