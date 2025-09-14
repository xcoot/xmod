.class public final synthetic Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
