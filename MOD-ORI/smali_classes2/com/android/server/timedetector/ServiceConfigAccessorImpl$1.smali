.class public final Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
