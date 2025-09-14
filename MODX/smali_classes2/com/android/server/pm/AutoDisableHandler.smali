.class public final Lcom/android/server/pm/AutoDisableHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;-><init>(Lcom/android/server/pm/AutoDisableHandler;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
