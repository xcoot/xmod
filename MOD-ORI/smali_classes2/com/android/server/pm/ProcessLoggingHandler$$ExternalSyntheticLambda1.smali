.class public final synthetic Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic f$1:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
