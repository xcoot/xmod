.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 13
    const/4 v1, 0x7

    .line 14
    if-eq v0, v1, :cond_1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 19
    const/16 v1, 0x1f

    .line 21
    if-ne v0, v1, :cond_2

    .line 23
    :cond_1
    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 29
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 32
    :cond_2
    :goto_0
    return-void
.end method
