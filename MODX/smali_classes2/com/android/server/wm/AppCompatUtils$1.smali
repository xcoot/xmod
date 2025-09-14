.class public final Lcom/android/server/wm/AppCompatUtils$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public mRead:Z

.field public mValue:Z

.field public final synthetic val$supplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    .line 15
    .line 16
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    .line 17
    .line 18
    return p0
.end method
