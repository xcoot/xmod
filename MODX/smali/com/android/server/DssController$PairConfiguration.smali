.class public final Lcom/android/server/DssController$PairConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppGlobal:Landroid/graphics/Rect;

.field public final mAppOverride:Landroid/graphics/Rect;

.field public final mBound:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    .line 6
    iput-object p2, p0, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    .line 8
    iput-object p3, p0, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    .line 10
    return-void
.end method
