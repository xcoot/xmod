.class public final Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;->val$cr:Landroid/content/ContentResolver;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sIsRduDevice:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;->val$cr:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string/jumbo v0, "shopdemo"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    move v1, v0

    .line 17
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
