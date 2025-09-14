.class public final synthetic Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
