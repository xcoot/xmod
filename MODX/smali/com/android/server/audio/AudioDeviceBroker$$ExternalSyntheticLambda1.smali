.class public final synthetic Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 5
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 8
    move-result p1

    .line 9
    if-ne p1, p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method
