.class public final Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sPool:Landroid/util/Pools$SimplePool;


# instance fields
.field public dispatchTime:J

.field public event:Landroid/view/KeyEvent;

.field public policyFlags:I

.field public previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    .line 9
    .line 10
    return-void
.end method
