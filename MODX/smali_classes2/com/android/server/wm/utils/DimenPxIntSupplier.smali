.class public final Lcom/android/server/wm/utils/DimenPxIntSupplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastDensity:F

.field public final mResourceId:I

.field public mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mLastDensity:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mValue:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mResourceId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mLastDensity:F

    .line 14
    .line 15
    cmpl-float v1, v0, v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mLastDensity:F

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mResourceId:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mValue:I

    .line 34
    .line 35
    :cond_0
    iget p0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mValue:I

    .line 36
    .line 37
    return p0
.end method
