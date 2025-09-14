.class public final synthetic Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilterImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilterImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "debug.pm.use_app_filter_cache"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 14
    .line 15
    return-void
.end method
