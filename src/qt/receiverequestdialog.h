// Copyright (c) 2011-2016 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef PAICOIN_QT_RECEIVEREQUESTDIALOG_H
#define PAICOIN_QT_RECEIVEREQUESTDIALOG_H

#include "walletmodel.h"
#include "qrimagewidget.h"
#include "paicoindialog.h"

#include <QDialog>
#include <QImage>
#include <QLabel>
#include <QPainter>

class OptionsModel;

namespace Ui {
    class ReceiveRequestDialog;
}

QT_BEGIN_NAMESPACE
class QMenu;
QT_END_NAMESPACE

class ReceiveRequestDialog : public PaicoinDialog
{
    Q_OBJECT

public:
    explicit ReceiveRequestDialog(QWidget *parent = nullptr);
    ~ReceiveRequestDialog();

    void setModel(OptionsModel *model);
    void setInfo(const SendCoinsRecipient &info);

private Q_SLOTS:
    void on_btnCopyURI_clicked();
    void on_btnCopyAddress_clicked();
    void on_btnSaveAs_clicked();
    void update();

private:
    Ui::ReceiveRequestDialog *ui;
    OptionsModel *model;
    SendCoinsRecipient info;
};

#endif // PAICOIN_QT_RECEIVEREQUESTDIALOG_H
