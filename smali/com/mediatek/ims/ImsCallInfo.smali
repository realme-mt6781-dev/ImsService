.class public Lcom/mediatek/ims/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsCallInfo$State;
    }
.end annotation


# instance fields
.field public mCallId:Ljava/lang/String;

.field public mCallNum:Ljava/lang/String;

.field public mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

.field public mIsConference:Z

.field public mIsConferenceHost:Z

.field public mIsEcc:Z

.field public mIsRemoteHold:Z

.field public mIsStkCall:Z

.field public mIsVideo:Z

.field public mState:Lcom/mediatek/ims/ImsCallInfo$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/mediatek/ims/ImsCallInfo$State;ZLcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callNum"    # Ljava/lang/String;
    .param p3, "isConference"    # Z
    .param p4, "isConferenceHost"    # Z
    .param p5, "isVideo"    # Z
    .param p6, "isEcc"    # Z
    .param p7, "isStkCall"    # Z
    .param p8, "state"    # Lcom/mediatek/ims/ImsCallInfo$State;
    .param p9, "isRemoteHold"    # Z
    .param p10, "callSession"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 71
    iput-boolean p3, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 72
    iput-boolean p4, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 73
    iput-boolean p5, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 74
    iput-boolean p6, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsEcc:Z

    .line 75
    iput-boolean p7, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsStkCall:Z

    .line 76
    iput-object p8, p0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 77
    iput-boolean p9, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    .line 78
    iput-object p10, p0, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 79
    return-void
.end method
