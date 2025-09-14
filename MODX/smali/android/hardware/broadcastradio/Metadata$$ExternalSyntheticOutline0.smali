.class public abstract synthetic Landroid/hardware/broadcastradio/Metadata$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(Ljava/lang/String;Landroid/hardware/broadcastradio/Metadata;I)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 9
    return-object v0
.end method
