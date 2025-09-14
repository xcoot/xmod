.class public final Lcom/android/server/am/InstrumentationReporter$Report;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mName:Landroid/content/ComponentName;

.field public final mResultCode:I

.field public final mResults:Landroid/os/Bundle;

.field public final mType:I

.field public final mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>(ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    .line 6
    iput-object p2, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    .line 10
    iput p4, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    .line 12
    iput-object p5, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 14
    invoke-interface {p2}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 21
    return-void
.end method
