.class public final Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;


# virtual methods
.method public final getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    .line 6
    return-object p0
.end method
