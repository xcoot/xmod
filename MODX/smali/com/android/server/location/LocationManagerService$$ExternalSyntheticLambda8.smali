.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    .line 6
    return-void
.end method
